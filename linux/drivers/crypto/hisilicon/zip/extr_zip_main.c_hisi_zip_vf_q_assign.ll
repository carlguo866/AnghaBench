; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_vf_q_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_vf_q_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip*, i32)* @hisi_zip_vf_q_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_vf_q_assign(%struct.hisi_zip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_zip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hisi_zip* %0, %struct.hisi_zip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.hisi_zip*, %struct.hisi_zip** %4, align 8
  %14 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %13, i32 0, i32 0
  store %struct.hisi_qm* %14, %struct.hisi_qm** %6, align 8
  %15 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %16 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %26 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %68, %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = srem i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @hisi_qm_set_vft(%struct.hisi_qm* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %40

71:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %62, %33, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @hisi_qm_set_vft(%struct.hisi_qm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
