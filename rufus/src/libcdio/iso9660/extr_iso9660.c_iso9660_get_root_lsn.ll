; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_root_lsn.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_root_lsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CDIO_INVALID_LSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_get_root_lsn(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* null, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CDIO_INVALID_LSN, align 4
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp eq %struct.TYPE_5__* null, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @CDIO_INVALID_LSN, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @from_733(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %14, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @from_733(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
