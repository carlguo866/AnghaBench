; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_md5.c_FLAC__MD5Update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_md5.c_FLAC__MD5Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @FLAC__MD5Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FLAC__MD5Update(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %13, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %15, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 63
  %32 = sub i32 64, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 64
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  br label %109

48:                                               ; preds = %29
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 64
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @byteSwapX16(i32* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @FLAC__MD5Transform(i32 %66, i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %81, %48
  %79 = load i32, i32* %6, align 4
  %80 = icmp uge i32 %79, 64
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @memcpy(i32* %84, i32* %85, i32 64)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @byteSwapX16(i32* %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @FLAC__MD5Transform(i32 %93, i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 64
  store i32* %99, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub i32 %100, 64
  store i32 %101, i32* %6, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @memcpy(i32* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %36
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @byteSwapX16(i32*) #1

declare dso_local i32 @FLAC__MD5Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
