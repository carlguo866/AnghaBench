; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_adfs.h_adfs_map_discrecord.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_adfs.h_adfs_map_discrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_discrecord = type opaque
%struct.adfs_discmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adfs_discrecord* (%struct.adfs_discmap*)* @adfs_map_discrecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adfs_discrecord* @adfs_map_discrecord(%struct.adfs_discmap* %0) #0 {
  %2 = alloca %struct.adfs_discmap*, align 8
  store %struct.adfs_discmap* %0, %struct.adfs_discmap** %2, align 8
  %3 = load %struct.adfs_discmap*, %struct.adfs_discmap** %2, align 8
  %4 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %3, i64 0
  %5 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 4
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.adfs_discrecord*
  ret %struct.adfs_discrecord* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
