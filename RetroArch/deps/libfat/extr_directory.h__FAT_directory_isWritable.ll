; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.h__FAT_directory_isWritable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.h__FAT_directory_isWritable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@DIR_ENTRY_attributes = common dso_local global i64 0, align 8
@ATTRIB_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @_FAT_directory_isWritable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_isWritable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATTRIB_RO, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
