; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_h_modify_ehea_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_h_modify_ehea_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_MODIFY_HEA_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ehea_h_modify_ehea_qp(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i64* %5, i64* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64* %8, i64** %18, align 8
  %22 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %20, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %21, align 8
  %26 = load i32, i32* @H_MODIFY_HEA_QP, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @__pa(i8* %31)
  %33 = call i64 @ehea_plpar_hcall9(i32 %26, i64* %25, i64 %27, i64 %28, i64 %29, i64 %30, i32 %32, i32 0, i32 0, i32 0, i32 0)
  store i64 %33, i64* %19, align 8
  %34 = getelementptr inbounds i64, i64* %25, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = load i64*, i64** %15, align 8
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds i64, i64* %25, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %17, align 8
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds i64, i64* %25, i64 4
  %41 = load i64, i64* %40, align 16
  %42 = load i64*, i64** %18, align 8
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds i64, i64* %25, i64 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %16, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %19, align 8
  %47 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i64 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehea_plpar_hcall9(i32, i64*, i64, i64, i64, i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @__pa(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
