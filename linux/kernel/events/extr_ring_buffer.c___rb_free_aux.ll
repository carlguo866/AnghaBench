; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c___rb_free_aux.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c___rb_free_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i32, i32*, i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer*)* @__rb_free_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rb_free_aux(%struct.ring_buffer* %0) #0 {
  %2 = alloca %struct.ring_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %2, align 8
  %4 = call i32 (...) @in_atomic()
  %5 = call i32 @WARN_ON_ONCE(i32 %4)
  %6 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 3
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 %13(i32* %16)
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %18, i32 0, i32 3
  store i32 (i32*)* null, i32 (i32*)** %19, align 8
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rb_free_aux_page(%struct.ring_buffer* %35, i32 %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.ring_buffer*, %struct.ring_buffer** %2, align 8
  %47 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %41, %22
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_atomic(...) #1

declare dso_local i32 @rb_free_aux_page(%struct.ring_buffer*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
