; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.dm_zone* }
%struct.dm_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_id(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %5 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %6 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %7 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %6, i32 0, i32 0
  %8 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %9 = ptrtoint %struct.dm_zone* %5 to i64
  %10 = ptrtoint %struct.dm_zone* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
