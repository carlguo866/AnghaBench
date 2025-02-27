; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_release_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_release_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32 }

@B_READING = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@do_io_schedule = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4
@LIST_DIRTY = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@write_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_release_move(%struct.dm_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_bufio_client*, align 8
  %6 = alloca %struct.dm_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %8, i32 0, i32 4
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %9, align 8
  store %struct.dm_bufio_client* %10, %struct.dm_bufio_client** %5, align 8
  %11 = call i32 (...) @dm_bufio_in_request()
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %14 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %13)
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.dm_buffer* @__find(%struct.dm_bufio_client* %16, i32 %17)
  store %struct.dm_buffer* %18, %struct.dm_buffer** %6, align 8
  %19 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %20 = icmp ne %struct.dm_buffer* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %28 = call i32 @__wait_for_free_buffer(%struct.dm_bufio_client* %27)
  br label %15

29:                                               ; preds = %21
  %30 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %31 = call i32 @__make_buffer_clean(%struct.dm_buffer* %30)
  %32 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %33 = call i32 @__unlink_buffer(%struct.dm_buffer* %32)
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %35 = call i32 @__free_buffer_wake(%struct.dm_buffer* %34)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i32, i32* @B_READING, align 4
  %45 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %45, i32 0, i32 2
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %50 = call i32 @__write_dirty_buffer(%struct.dm_buffer* %49, i32* null)
  %51 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %72

55:                                               ; preds = %36
  %56 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %56, i32 0, i32 2
  %58 = load i32, i32* @B_WRITING, align 4
  %59 = load i32, i32* @do_io_schedule, align 4
  %60 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %61 = call i32 @wait_on_bit(i32* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @B_DIRTY, align 4
  %63 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %64 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %63, i32 0, i32 2
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %67 = call i32 @__unlink_buffer(%struct.dm_buffer* %66)
  %68 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @LIST_DIRTY, align 4
  %71 = call i32 @__link_buffer(%struct.dm_buffer* %68, i32 %69, i32 %70)
  br label %109

72:                                               ; preds = %36
  %73 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %74 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %73, i32 0, i32 2
  %75 = load i32, i32* @B_WRITING, align 4
  %76 = load i32, i32* @do_io_schedule, align 4
  %77 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %78 = call i32 @wait_on_bit_lock(i32* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %80 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %83 = call i32 @__unlink_buffer(%struct.dm_buffer* %82)
  %84 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %87 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__link_buffer(%struct.dm_buffer* %84, i32 %85, i32 %88)
  %90 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %91 = load i32, i32* @WRITE, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @write_endio, align 4
  %94 = call i32 @submit_io(%struct.dm_buffer* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %96 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %95, i32 0, i32 2
  %97 = load i32, i32* @B_WRITING, align 4
  %98 = load i32, i32* @do_io_schedule, align 4
  %99 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %100 = call i32 @wait_on_bit(i32* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %102 = call i32 @__unlink_buffer(%struct.dm_buffer* %101)
  %103 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %106 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__link_buffer(%struct.dm_buffer* %103, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %72, %55
  %110 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %111 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %110)
  %112 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %113 = call i32 @dm_bufio_release(%struct.dm_buffer* %112)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_in_request(...) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local %struct.dm_buffer* @__find(%struct.dm_bufio_client*, i32) #1

declare dso_local i32 @__wait_for_free_buffer(%struct.dm_bufio_client*) #1

declare dso_local i32 @__make_buffer_clean(%struct.dm_buffer*) #1

declare dso_local i32 @__unlink_buffer(%struct.dm_buffer*) #1

declare dso_local i32 @__free_buffer_wake(%struct.dm_buffer*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__write_dirty_buffer(%struct.dm_buffer*, i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__link_buffer(%struct.dm_buffer*, i32, i32) #1

declare dso_local i32 @wait_on_bit_lock(i32*, i32, i32, i32) #1

declare dso_local i32 @submit_io(%struct.dm_buffer*, i32, i32, i32) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
