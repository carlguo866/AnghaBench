; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_get_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_get_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i32 }
%struct.directive = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, %struct.directive*)* @get_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_operand(%struct.state* %0, %struct.directive* %1) #0 {
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.directive*, align 8
  %5 = alloca i32, align 4
  store %struct.state* %0, %struct.state** %3, align 8
  store %struct.directive* %1, %struct.directive** %4, align 8
  %6 = load %struct.directive*, %struct.directive** %4, align 8
  %7 = getelementptr inbounds %struct.directive, %struct.directive* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_num(i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.state*, %struct.state** %3, align 8
  %12 = getelementptr inbounds %struct.state, %struct.state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.state*, %struct.state** %3, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_num(i32 %18, i32 8)
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.state*, %struct.state** %3, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.state*, %struct.state** %3, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_num(i32 %30, i32 16)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @get_num(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
