; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_flush_writer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_flush_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_flush_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_flush_writer(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %3 = load %struct.pblk*, %struct.pblk** %2, align 8
  %4 = getelementptr inbounds %struct.pblk, %struct.pblk* %3, i32 0, i32 0
  %5 = call i32 @pblk_rb_flush(i32* %4)
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.pblk*, %struct.pblk** %2, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  %9 = call i32 @pblk_rb_sync_count(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %17

12:                                               ; preds = %6
  %13 = load %struct.pblk*, %struct.pblk** %2, align 8
  %14 = call i32 @pblk_write_kick(%struct.pblk* %13)
  %15 = call i32 (...) @schedule()
  br label %16

16:                                               ; preds = %12
  br i1 true, label %6, label %17

17:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @pblk_rb_flush(i32*) #1

declare dso_local i32 @pblk_rb_sync_count(i32*) #1

declare dso_local i32 @pblk_write_kick(%struct.pblk*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
