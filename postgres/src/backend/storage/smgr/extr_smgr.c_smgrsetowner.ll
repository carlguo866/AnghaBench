; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_smgr.c_smgrsetowner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_smgr.c_smgrsetowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smgrsetowner(%struct.TYPE_4__** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %6 = icmp ne %struct.TYPE_4__** %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = icmp ne %struct.TYPE_4__** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @dlist_delete(i32* %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.TYPE_4__** %22, %struct.TYPE_4__*** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %26, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dlist_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
