; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_get_pp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_get_pp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_sys_get_pp_table(%struct.smu_context* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.smu_table_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store %struct.smu_table_context* %8, %struct.smu_table_context** %6, align 8
  %9 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %10 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %15 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %13, %2
  %22 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %23 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %28 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %33 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %38 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
