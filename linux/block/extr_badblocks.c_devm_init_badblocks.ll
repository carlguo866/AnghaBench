; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_devm_init_badblocks.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_devm_init_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.badblocks = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_init_badblocks(%struct.device* %0, %struct.badblocks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.badblocks*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.badblocks* %1, %struct.badblocks** %5, align 8
  %6 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %7 = icmp ne %struct.badblocks* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.badblocks*, %struct.badblocks** %5, align 8
  %14 = call i32 @__badblocks_init(%struct.device* %12, %struct.badblocks* %13, i32 1)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @__badblocks_init(%struct.device*, %struct.badblocks*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
