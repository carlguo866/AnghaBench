; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_rename.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @vfs_spiffs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_spiffs_rename(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @SPIFFS_rename(i32 %18, i8* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SPIFFS_errno(i32 %27)
  %29 = call i32 @spiffs_res_to_errno(i32 %28)
  store i32 %29, i32* @errno, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SPIFFS_clearerr(i32 %32)
  store i32 -1, i32* %4, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @SPIFFS_rename(i32, i8*, i8*) #1

declare dso_local i32 @spiffs_res_to_errno(i32) #1

declare dso_local i32 @SPIFFS_errno(i32) #1

declare dso_local i32 @SPIFFS_clearerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
