; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_mov_cenc_write_saiz_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_mov_cenc_write_saiz_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"saiz\00", align 1
@AES_CTR_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @mov_cenc_write_saiz_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_cenc_write_saiz_tag(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @avio_tell(i32* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @avio_wb32(i32* %8, i32 0)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ffio_wfourcc(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @avio_wb32(i32* %12, i32 0)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AES_CTR_IV_SIZE, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  %24 = call i32 @avio_w8(i32* %14, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @avio_wb32(i32* %25, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @avio_write(i32* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %22
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @update_size(i32* %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
