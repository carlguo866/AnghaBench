; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_cell_release_no_holder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_cell_release_no_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_cell_release_no_holder(%struct.dm_bio_prison* %0, %struct.dm_bio_prison_cell* %1, %struct.bio_list* %2) #0 {
  %4 = alloca %struct.dm_bio_prison*, align 8
  %5 = alloca %struct.dm_bio_prison_cell*, align 8
  %6 = alloca %struct.bio_list*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %4, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %5, align 8
  store %struct.bio_list* %2, %struct.bio_list** %6, align 8
  %8 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %4, align 8
  %9 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %13 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %14 = call i32 @__cell_release_no_holder(%struct.dm_bio_prison_cell* %12, %struct.bio_list* %13)
  %15 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %4, align 8
  %16 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cell_release_no_holder(%struct.dm_bio_prison_cell*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
