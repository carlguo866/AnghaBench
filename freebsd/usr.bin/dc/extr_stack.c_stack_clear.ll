; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_clear(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  store %struct.stack* %0, %struct.stack** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.stack*, %struct.stack** %2, align 8
  %5 = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load %struct.stack*, %struct.stack** %2, align 8
  %10 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.stack*, %struct.stack** %2, align 8
  %13 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds i32, i32* %11, i64 %14
  %17 = call i32 @stack_free_value(i32* %16)
  br label %3

18:                                               ; preds = %3
  %19 = load %struct.stack*, %struct.stack** %2, align 8
  %20 = getelementptr inbounds %struct.stack, %struct.stack* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  %23 = load %struct.stack*, %struct.stack** %2, align 8
  %24 = call i32 @stack_init(%struct.stack* %23)
  ret void
}

declare dso_local i32 @stack_free_value(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stack_init(%struct.stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
