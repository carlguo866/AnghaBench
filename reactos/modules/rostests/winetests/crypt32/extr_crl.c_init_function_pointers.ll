; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_crl.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_crl.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"crypt32.dll\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CertFindCertificateInCRL\00", align 1
@pCertFindCertificateInCRL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"CertFindCRLInStore\00", align 1
@pCertFindCRLInStore = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"CertIsValidCRLForCertificate\00", align 1
@pCertIsValidCRLForCertificate = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @GetProcAddress(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** @pCertFindCertificateInCRL, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @pCertFindCRLInStore, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @GetProcAddress(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pCertIsValidCRLForCertificate, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
