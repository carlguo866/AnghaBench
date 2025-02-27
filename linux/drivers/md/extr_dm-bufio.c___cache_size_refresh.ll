; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___cache_size_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___cache_size_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_bufio_clients_lock = common dso_local global i32 0, align 4
@dm_bufio_client_count = common dso_local global i64 0, align 8
@dm_bufio_cache_size = common dso_local global i32 0, align 4
@dm_bufio_cache_size_latch = common dso_local global i64 0, align 8
@dm_bufio_default_cache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__cache_size_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cache_size_refresh() #0 {
  %1 = call i32 @mutex_is_locked(i32* @dm_bufio_clients_lock)
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load i64, i64* @dm_bufio_client_count, align 8
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* @dm_bufio_cache_size, align 4
  %11 = call i64 @READ_ONCE(i32 %10)
  store i64 %11, i64* @dm_bufio_cache_size_latch, align 8
  %12 = load i64, i64* @dm_bufio_cache_size_latch, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* @dm_bufio_default_cache_size, align 8
  %16 = call i32 @cmpxchg(i32* @dm_bufio_cache_size, i32 0, i64 %15)
  %17 = load i64, i64* @dm_bufio_default_cache_size, align 8
  store i64 %17, i64* @dm_bufio_cache_size_latch, align 8
  br label %18

18:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
