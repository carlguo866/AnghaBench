; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_cmd_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_cmd_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_info = type { i32, i32 }

@F_LEN_MASK = common dso_local global i32 0, align 4
@F_LEN_CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_info*, i32)* @get_cmd_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cmd_length(%struct.cmd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.cmd_info* %0, %struct.cmd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cmd_info*, %struct.cmd_info** %4, align 8
  %7 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @F_LEN_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @F_LEN_CONST, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.cmd_info*, %struct.cmd_info** %4, align 8
  %15 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cmd_info*, %struct.cmd_info** %4, align 8
  %20 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = sub i32 %22, 1
  %24 = and i32 %18, %23
  %25 = add i32 %24, 2
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
