; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"usage: %s [options] [file ...]\0A\00", align 1
@__progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"  -l          List fingerprints of all identities.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"  -E hash     Specify hash algorithm used for fingerprints.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"  -L          List public key parameters of all identities.\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"  -k          Load only keys and not certificates.\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"  -c          Require confirmation to sign using identities\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"  -m minleft  Maxsign is only changed if less than minleft are left (for XMSS)\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"  -M maxsign  Maximum number of signatures allowed (for XMSS)\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"  -t life     Set lifetime (in seconds) when adding identities.\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"  -d          Delete identity.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"  -D          Delete all identities.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"  -x          Lock agent.\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"  -X          Unlock agent.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"  -s pkcs11   Add keys from PKCS#11 provider.\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"  -e pkcs11   Remove keys provided by PKCS#11 provider.\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"  -q          Be quiet after a successful operation.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @__progname, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
