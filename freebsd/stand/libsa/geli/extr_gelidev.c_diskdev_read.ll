; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_diskdev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_diskdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)* }

@F_READ = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @diskdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diskdev_read(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.disk_devdesc*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %13, %struct.disk_devdesc** %11, align 8
  %14 = load %struct.disk_devdesc*, %struct.disk_devdesc** %11, align 8
  %15 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)*, i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)** %18, align 8
  %20 = load %struct.disk_devdesc*, %struct.disk_devdesc** %11, align 8
  %21 = load i32, i32* @F_READ, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @DEV_BSIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i64, i64* %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 %19(%struct.disk_devdesc* %20, i32 %21, i32 %24, i64 %25, i8* %26, i32* null)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
