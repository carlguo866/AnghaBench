; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_default_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_default_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { i32 }
%struct.mirror_set = type { i32, %struct.mirror* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mirror* (%struct.mirror_set*)* @get_default_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mirror* @get_default_mirror(%struct.mirror_set* %0) #0 {
  %2 = alloca %struct.mirror_set*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %2, align 8
  %3 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %4 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %3, i32 0, i32 1
  %5 = load %struct.mirror*, %struct.mirror** %4, align 8
  %6 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %7 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %6, i32 0, i32 0
  %8 = call i64 @atomic_read(i32* %7)
  %9 = getelementptr inbounds %struct.mirror, %struct.mirror* %5, i64 %8
  ret %struct.mirror* %9
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
