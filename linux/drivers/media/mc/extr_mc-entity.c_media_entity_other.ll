; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_link = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.media_entity* }
%struct.TYPE_3__ = type { %struct.media_entity* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.media_entity*, %struct.media_link*)* @media_entity_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @media_entity_other(%struct.media_entity* %0, %struct.media_link* %1) #0 {
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca %struct.media_link*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %4, align 8
  store %struct.media_link* %1, %struct.media_link** %5, align 8
  %6 = load %struct.media_link*, %struct.media_link** %5, align 8
  %7 = getelementptr inbounds %struct.media_link, %struct.media_link* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %12 = icmp eq %struct.media_entity* %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.media_link*, %struct.media_link** %5, align 8
  %15 = getelementptr inbounds %struct.media_link, %struct.media_link* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.media_entity*, %struct.media_entity** %17, align 8
  store %struct.media_entity* %18, %struct.media_entity** %3, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.media_link*, %struct.media_link** %5, align 8
  %21 = getelementptr inbounds %struct.media_link, %struct.media_link* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.media_entity*, %struct.media_entity** %23, align 8
  store %struct.media_entity* %24, %struct.media_entity** %3, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  ret %struct.media_entity* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
