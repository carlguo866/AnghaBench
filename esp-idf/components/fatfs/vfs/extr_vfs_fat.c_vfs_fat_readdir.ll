; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_readdir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dirent* (i8*, i32*)* @vfs_fat_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirent* @vfs_fat_readdir(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @vfs_fat_readdir_r(i8* %11, i32* %12, i32* %14, %struct.dirent** %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* @errno, align 4
  store %struct.dirent* null, %struct.dirent** %3, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load %struct.dirent*, %struct.dirent** %7, align 8
  store %struct.dirent* %21, %struct.dirent** %3, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.dirent*, %struct.dirent** %3, align 8
  ret %struct.dirent* %23
}

declare dso_local i32 @vfs_fat_readdir_r(i8*, i32*, i32*, %struct.dirent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
