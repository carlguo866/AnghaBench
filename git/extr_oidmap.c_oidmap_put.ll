; ModuleID = '/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_put.c'
source_filename = "/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.oidmap_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @oidmap_put(%struct.oidmap* %0, i8* %1) #0 {
  %3 = alloca %struct.oidmap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.oidmap_entry*, align 8
  store %struct.oidmap* %0, %struct.oidmap** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.oidmap_entry*
  store %struct.oidmap_entry* %7, %struct.oidmap_entry** %5, align 8
  %8 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %9 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %15 = call i32 @oidmap_init(%struct.oidmap* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.oidmap_entry*, %struct.oidmap_entry** %5, align 8
  %18 = getelementptr inbounds %struct.oidmap_entry, %struct.oidmap_entry* %17, i32 0, i32 0
  %19 = load %struct.oidmap_entry*, %struct.oidmap_entry** %5, align 8
  %20 = getelementptr inbounds %struct.oidmap_entry, %struct.oidmap_entry* %19, i32 0, i32 1
  %21 = call i32 @oidhash(i32* %20)
  %22 = call i32 @hashmap_entry_init(i32* %18, i32 %21)
  %23 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %24 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %23, i32 0, i32 0
  %25 = load %struct.oidmap_entry*, %struct.oidmap_entry** %5, align 8
  %26 = getelementptr inbounds %struct.oidmap_entry, %struct.oidmap_entry* %25, i32 0, i32 0
  %27 = call i8* @hashmap_put(%struct.TYPE_2__* %24, i32* %26)
  ret i8* %27
}

declare dso_local i32 @oidmap_init(%struct.oidmap*, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @oidhash(i32*) #1

declare dso_local i8* @hashmap_put(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
