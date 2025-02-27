; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_pp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_pp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @pp_dpm_get_pp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_dpm_get_pp_table(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %9, %struct.pp_hwmgr** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %11 = icmp ne %struct.pp_hwmgr* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
