; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_pushnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_pushnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.number* }
%struct.number = type { i32 }

@BCODE_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_pushnumber(%struct.stack* %0, %struct.number* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.number*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.number* %1, %struct.number** %4, align 8
  %5 = load %struct.stack*, %struct.stack** %3, align 8
  %6 = call i32 @stack_grow(%struct.stack* %5)
  %7 = load i32, i32* @BCODE_NUMBER, align 4
  %8 = load %struct.stack*, %struct.stack** %3, align 8
  %9 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.stack*, %struct.stack** %3, align 8
  %12 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %7, i32* %15, align 8
  %16 = load %struct.number*, %struct.number** %4, align 8
  %17 = load %struct.stack*, %struct.stack** %3, align 8
  %18 = getelementptr inbounds %struct.stack, %struct.stack* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.stack*, %struct.stack** %3, align 8
  %21 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.number* %16, %struct.number** %25, align 8
  %26 = load %struct.stack*, %struct.stack** %3, align 8
  %27 = getelementptr inbounds %struct.stack, %struct.stack* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.stack*, %struct.stack** %3, align 8
  %30 = getelementptr inbounds %struct.stack, %struct.stack* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @stack_grow(%struct.stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
