; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_plpar_wrappers.h_plpar_xirr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_plpar_wrappers.h_plpar_xirr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_XIRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @plpar_xirr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plpar_xirr(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %6 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @H_XIRR, align 4
  %11 = call i64 @plpar_hcall(i32 %10, i64* %9)
  store i64 %11, i64* %3, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %16)
  ret i64 %15
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
