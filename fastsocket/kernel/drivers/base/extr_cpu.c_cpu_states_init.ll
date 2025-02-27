; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_cpu.c_cpu_states_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_cpu.c_cpu_states_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_state_attr = common dso_local global i32* null, align 8
@cpu_sysdev_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_states_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_states_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32*, i32** @cpu_state_attr, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32*, i32** @cpu_state_attr, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sysdev_class_create_file(i32* @cpu_sysdev_class, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sysdev_class_create_file(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
