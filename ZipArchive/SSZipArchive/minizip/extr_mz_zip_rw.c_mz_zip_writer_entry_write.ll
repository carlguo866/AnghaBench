; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_write.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_entry_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @mz_zip_entry_write(i32 %13, i8* %14, i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @mz_crypt_sha_update(i32* %27, i8* %28, i64 %29)
  br label %31

31:                                               ; preds = %24, %19, %3
  %32 = load i64, i64* %8, align 8
  ret i64 %32
}

declare dso_local i64 @mz_zip_entry_write(i32, i8*, i64) #1

declare dso_local i32 @mz_crypt_sha_update(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
