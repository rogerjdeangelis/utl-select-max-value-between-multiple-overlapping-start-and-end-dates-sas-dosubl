%let pgm=utl-select-max-value-between-multiple-overlapping-start-and-end-dates-sas-dosubl;

%stop_submission;

Select max value between multiple overlapping start and end dates sas dosubl

github
https://tinyurl.com/ycxenms9
https://github.com/rogerjdeangelis/utl-select-max-value-between-multiple-overlapping-start-and-end-dates-sas-dosubl

SOAPBOX ON

I realize dosubl is slow.
Depending on the number of date ranges, this solution could be usable.
Since dosubl appears to run separate 'address space', perhaps
sas could impprove dosubl performance and maybe even make
it an exceutable?

Also sharing a common block of storage with the parent datastep
could improve performance.

SOAPBOX OFF


CONTENTS
   1 sas dosubl
   2 related repos

github
https://tinyurl.com/njnbusuw
https://communities.sas.com/t5/SAS-Programming/Find-Max-between-2-date/m-p/808213#M318674

/**************************************************************************************************************************/
/*        INPPUT             |          PROCESS                                 |      OUTPUT                             */
/* WORK.HAVE total obs=6     | proc datasets lib=work;                          | WORK.WANT total obs=2                   */
/* DATE    VALUE             |   delete sasmac1 sasmac2 sasmac3 /mt=cat;        | START    END    RC    MAX               */
/*                           | run;quit;                                        |                                         */
/*   1        5              | %symdel start end max / nowarn;                  |   2       4      0      8               */
/*   2        6              |                                                  |   3       6      0     99               */
/*   3        8              | data want;                                       |                                         */
/*   4        1              |  set meta;                                       |                                         */
/*   5       99              |  call symputx("start",start);                    |                                         */
/*   6        3              |  call symputx("end",end);                        |                                         */
/*                           |  rc=dosubl('                                     |                                         */
/* WORK.META total obs=2     |                                                  |                                         */
/*  START    END             |     proc sql;                                    |                                         */
/*                           |        select                                    |                                         */
/*    2       4              |           max(value) into :max                   |                                         */
/*    3       6              |        from                                      |                                         */
/*                           |           have                                   |                                         */
/*                           |        where                                     |                                         */
/* data have;                |          date between &start and &end            |                                         */
/* input date value;         |     ;quit;                                       |                                         */
/* cards4;                   |     ');                                          |                                         */
/* 1 5                       |     max = symgetn('max');                        |                                         */
/* 2 6                       | run;quit;                                        |                                         */
/* 3 8                       |                                                  |                                         */
/* 4 1                       |                                                  |                                         */
/* 5 99                      |                                                  |                                         */
/* 6 3                       |                                                  |                                         */
/* ;;;;                      |                                                  |                                         */
/* run;quit;                 |                                                  |                                         */
/*                           |                                                  |                                         */
/* data meta;                |                                                  |                                         */
/* input start end;          |                                                  |                                         */
/* datalines;                |                                                  |                                         */
/* 2 4                       |                                                  |                                         */
/* 3 6                       |                                                  |                                         */
/* ;run;                     |                                                  |                                         */
/**************************************************************************************************************************/

/*___             _       _           _
|___ \   _ __ ___| | __ _| |_ ___  __| |  _ __ ___ _ __   ___  ___
  __) | | `__/ _ \ |/ _` | __/ _ \/ _` | | `__/ _ \ `_ \ / _ \/ __|
 / __/  | | |  __/ | (_| | ||  __/ (_| | | | |  __/ |_) | (_) \__ \
|_____| |_|  \___|_|\__,_|\__\___|\__,_| |_|  \___| .__/ \___/|___/
                                                  |_|
*/
https://github.com/rogerjdeangelis/utl-twelve-interfaces-for-dosubl
https://github.com/rogerjdeangelis/-utl-delete-dosubl-created-sas-macro-libraries
https://github.com/rogerjdeangelis/Dynamic_variable_in_a_DOSUBL_execute_macro_in_SAS
https://github.com/rogerjdeangelis/utl-DOSUBL-running-sql-inside-a-datastep-to-check-if-variables-exist-in-another-table
https://github.com/rogerjdeangelis/utl-Interesting-property-of-sas-dosubl
https://github.com/rogerjdeangelis/utl-No-need-to-convert-your-datastep-code-to-macro-code-use-DOSUBL
https://github.com/rogerjdeangelis/utl-a-better-call-execute-using-dosubl
https://github.com/rogerjdeangelis/utl-academic-pipes-dosubl-open-defer-and-dropping-dowm-to-multiple-languages-in-one-datastep
https://github.com/rogerjdeangelis/utl-adding-female-students-to-an-all-male-math-class-using-sql-insert_and_dosubl
https://github.com/rogerjdeangelis/utl-adding-summary-statistics-to-your-datastep-input-table-macro-dosubl
https://github.com/rogerjdeangelis/utl-append-and-split-tables-into-two-tables-one-with-common-variables-and-one-without-dosubl-hash
https://github.com/rogerjdeangelis/utl-applying-meta-data-and-dosubl-to-create-mutiple-subset-tables
https://github.com/rogerjdeangelis/utl-cleaner-macro-code-using-dosubl
https://github.com/rogerjdeangelis/utl-create-mutiple-pdf-files-from-one-table-dosubl-ods-newfile-option
https://github.com/rogerjdeangelis/utl-dosubl-a-more-powerfull-macro-sysfunc-command
https://github.com/rogerjdeangelis/utl-dosubl-and-do-over-as-alternatives-to-explicit-macros
https://github.com/rogerjdeangelis/utl-dosubl-more-precise-eight-byte-float-computations-at-macro-excecution-time
https://github.com/rogerjdeangelis/utl-dosubl-persistent-hash-across-datasteps-and-procedures
https://github.com/rogerjdeangelis/utl-dosubl-remove-text-within-parentheses-of-macro-variable-using-regex
https://github.com/rogerjdeangelis/utl-dosubl-using-meta-data-with-column-names-and-labels-to-create-mutiple-proc-reports
https://github.com/rogerjdeangelis/utl-drop-down-using-dosubl-from-sas-datastep-to-wps-r-perl-powershell-python-msr-vb
https://github.com/rogerjdeangelis/utl-embed-sql-code-inside-proc-report-using-dosubl
https://github.com/rogerjdeangelis/utl-embedding-dosubl-in-a-macro-and-returning-an-updated-environment-variable-contents
https://github.com/rogerjdeangelis/utl-error-checking-sql-and-executing-a-datastep-inside-sql-dosubl
https://github.com/rogerjdeangelis/utl-extracting-sas-meta-data-using-sas-macro-fcmp-and-dosubl
https://github.com/rogerjdeangelis/utl-get-dataset-attributes-at-macro-time-within-a-datastep-using-attrn-dosubl-macros
https://github.com/rogerjdeangelis/utl-given-six-monthly-of-columns-hgt-and-wgt-create-l-table-of-six-columns-of-hgt-minus-wgt-dosubl
https://github.com/rogerjdeangelis/utl-in-memory-hash-output-shared-with-dosubl-hash-subprocess
https://github.com/rogerjdeangelis/utl-let-dosubl-and-the-sas-interpreter-work-for-you
https://github.com/rogerjdeangelis/utl-load-configuation-variable-assignments-into-an-sas-array-macro-and-dosubl
https://github.com/rogerjdeangelis/utl-loop-through-one-table-and-find-data-in-next-table--hash-dosubl-arts-transpose
https://github.com/rogerjdeangelis/utl-macro-klingon-solution-or-simple-dosubl-you-decide
https://github.com/rogerjdeangelis/utl-macro-with-dosubl-to-compute-last-day-of-month
https://github.com/rogerjdeangelis/utl-maitainable-macro-function-code-using-dosubl
https://github.com/rogerjdeangelis/utl-passing-a-datastep-array-to-dosubl-squaring-the-elements-passing-array-back-to-parent
https://github.com/rogerjdeangelis/utl-potentially-useful-dosubl-interface
https://github.com/rogerjdeangelis/utl-proof-of-concept-using-dosubl-to-create-a-fcmp-like-function-for-a-rolling-sum-of-size-three
https://github.com/rogerjdeangelis/utl-re-ordering-variables-into-alphabetic-order-in-the-pdv-macros-dosubl
https://github.com/rogerjdeangelis/utl-rename-variables-with-the-same-prefix-dosubl-varlist
https://github.com/rogerjdeangelis/utl-running-dosubl-at-macro-time-inside-a-macro-and-returning-a-macro-variable-to-open-code
https://github.com/rogerjdeangelis/utl-sas-array-macro-fcmp-or-dosubl-take-your-choice
https://github.com/rogerjdeangelis/utl-select-high-payment-periods-and-generating-code-with-do_over-and-dosubl
https://github.com/rogerjdeangelis/utl-sharing-a-common-block-of-memory-with-dosubl-using-sas-peek-and-poke
https://github.com/rogerjdeangelis/utl-sharing-datastep-memory-with-dosubl-using-assembler-like-load-and-store-instructions
https://github.com/rogerjdeangelis/utl-some-interesting-applications-of-dosubl
https://github.com/rogerjdeangelis/utl-transpose-multiple-rows-into-one-row-do_over-dosubl-and-varlist-macros
https://github.com/rogerjdeangelis/utl-use-dosubl-to-save-your-format-code-inside-proc-report
https://github.com/rogerjdeangelis/utl-using-dosubl-and-a-dynamic-arrays-to-add-new-variables
https://github.com/rogerjdeangelis/utl-using-dosubl-to-avoid-klingon-obsucated-macro-coding
https://github.com/rogerjdeangelis/utl-using-dosubl-to-avoid-macros-and-add-an-error-checking-log
https://github.com/rogerjdeangelis/utl-using-dosubl-to-exceute-r-for-each-row-in-a-dataset
https://github.com/rogerjdeangelis/utl-using-dosubl-with-data-driven-business-rules-to-split-a-table
https://github.com/rogerjdeangelis/utl-using-dynamic-tables-to-interface-with-dosubl
https://github.com/rogerjdeangelis/utl_avoiding_macros_and_call_execute_by_using_dosubl_with_log
https://github.com/rogerjdeangelis/utl_dosubl_do_regressions_when_data_is_between_dates
https://github.com/rogerjdeangelis/utl_dosubl_macros_to_select_max_value_of_a_column_at_datastep_execution_time
https://github.com/rogerjdeangelis/utl_dosubl_subroutine_interfaces
https://github.com/rogerjdeangelis/utl_dynamic_subroutines_dosubl_with_error_checking
https://github.com/rogerjdeangelis/utl_overcoming_serious_deficiencies_in_call_execute_with_dosubl
https://github.com/rogerjdeangelis/utl_pass_character_and_numeric_arrays_to_dosubl
https://github.com/rogerjdeangelis/utl_passing-in-memory-sas-objects-to-and-from-dosubl
https://github.com/rogerjdeangelis/utl_read_all_datasets_in_a_library_and_conditionally_split_them_with_error_checking_dosubl
https://github.com/rogerjdeangelis/utl_sharing_a_block_of_memory_with_dosubl
https://github.com/rogerjdeangelis/utl_using_dosubl_instead_of_a_macro_to_avoid_numeric_truncation
https://github.com/rogerjdeangelis/utl_using_dosubl_to_avoid_klingon_macro_quoting_functions
https://github.com/rogerjdeangelis/utl_why_proc_import_export_needs_to_be_deprecated_and_dosubl_acknowledged

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

