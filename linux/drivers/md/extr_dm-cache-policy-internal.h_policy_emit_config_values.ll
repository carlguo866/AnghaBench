; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_emit_config_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_emit_config_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { {}* }

@.str = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i8*, i32, i32*)* @policy_emit_config_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_emit_config_values(%struct.dm_cache_policy* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_cache_policy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %6, align 8
  %14 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.dm_cache_policy*, i8*, i32, i32*)**
  %16 = load i32 (%struct.dm_cache_policy*, i8*, i32, i32*)*, i32 (%struct.dm_cache_policy*, i8*, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.dm_cache_policy*, i8*, i32, i32*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %6, align 8
  %20 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.dm_cache_policy*, i8*, i32, i32*)**
  %22 = load i32 (%struct.dm_cache_policy*, i8*, i32, i32*)*, i32 (%struct.dm_cache_policy*, i8*, i32, i32*)** %21, align 8
  %23 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 %22(%struct.dm_cache_policy* %23, i8* %24, i32 %25, i32* %26)
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %4
  %29 = call i32 @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @DMEMIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
