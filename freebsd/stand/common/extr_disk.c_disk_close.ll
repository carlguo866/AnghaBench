; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.open_disk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s closed => %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_close(%struct.disk_devdesc* %0) #0 {
  %2 = alloca %struct.disk_devdesc*, align 8
  %3 = alloca %struct.open_disk*, align 8
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %2, align 8
  %4 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %5 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.open_disk*
  store %struct.open_disk* %8, %struct.open_disk** %3, align 8
  %9 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %10 = call i32 @disk_fmtdev(%struct.disk_devdesc* %9)
  %11 = load %struct.open_disk*, %struct.open_disk** %3, align 8
  %12 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.open_disk* %11)
  %13 = load %struct.open_disk*, %struct.open_disk** %3, align 8
  %14 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ptable_close(i32 %15)
  %17 = load %struct.open_disk*, %struct.open_disk** %3, align 8
  %18 = call i32 @free(%struct.open_disk* %17)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*, i32, %struct.open_disk*) #1

declare dso_local i32 @disk_fmtdev(%struct.disk_devdesc*) #1

declare dso_local i32 @ptable_close(i32) #1

declare dso_local i32 @free(%struct.open_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
