; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_is_entry_probing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_is_entry_probing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.llinfo_arp* }
%struct.llinfo_arp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arp_is_entry_probing(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.llinfo_arp*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.llinfo_arp*, %struct.llinfo_arp** %6, align 8
  store %struct.llinfo_arp* %7, %struct.llinfo_arp** %4, align 8
  %8 = load %struct.llinfo_arp*, %struct.llinfo_arp** %4, align 8
  %9 = icmp ne %struct.llinfo_arp* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.llinfo_arp*, %struct.llinfo_arp** %4, align 8
  %12 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.llinfo_arp*, %struct.llinfo_arp** %4, align 8
  %17 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %15, %10, %1
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
