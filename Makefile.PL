#/************************************************************************************
      
#                 Copyright (C) 2021 - 2023, Barca, Inc. 
# 
#             Email: <opensource@barca.com>  GitHub: @BarcaWebCloud. 
#       Project: BSCAN to scanner MotherBoards. CPU, Memory Ram, SO and more
 
 # This software is licensed as described in the file COPYING, which                    
 # you should have received as part of this distribution. The terms                     
 # are also available at https://project-barca.github.io/docs/copyright.html.           
 
 # You may opt to use, copy, modify, merge, publish, distribute and/or sell             
 # copies of the Software, and permit persons to whom the Software is                   
 # furnished to do so, under the terms of the COPYING file.                             
 
 # This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY            
 # KIND, either express or implied.                                                      
 
 # **************************************************************************************/
 use 5.008004;
 use ExtUtils::MakeMaker;
 
 WriteMakefile(
   NAME             => 'BScan::Utils',
   VERSION_FROM     => 'lib/BScan/Utils.pm',
   ABSTRACT_FROM    => 'lib/BScan/Utils.pm',
   AUTHOR           => 'Barca Web Cloud opensource@barca.com https://cloud.barca.com',
   LICENSE          => 'perl',
   MIN_PERL_VERSION => '5.0008004',
   EXE_FILES        => ['bin/bscan'],
   PREREQ_PM        => {
     'POSIX' => 0,
   },
   (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
     'meta-spec' => { version => 2 },
     resources => {
       repository => {
         type => 'git',
           url  => 'https://github.com/BarcaWebCloud/bscan-pl.git',
           web  => 'https://github.com/BarcaWebCloud/bscan-pl',
       },
     }})
   : ()
   ),
 );

# parts of Makefile used only in the development directory
if (-f 'priv.make' ) {
    open(M, ">>Makefile") or die;
    open(I,"priv.make") or die;
    while (<I>) { print M }
    close(M); close(I);
}