; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_checksum.c_sha1_write.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_checksum.c_sha1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @sha1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_write(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 63
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 64, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @memcpy(i8* %35, i8* %36, i64 %37)
  br label %77

39:                                               ; preds = %23
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @sha1_transform(%struct.TYPE_4__* %44, i8* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %39, %3
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i64, i64* %6, align 8
  %58 = icmp uge i64 %57, 64
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 64
  %62 = call i32 @PREFETCH64(i8* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @sha1_transform(%struct.TYPE_4__* %63, i8* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 64
  store i8* %67, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, 64
  store i64 %69, i64* %6, align 8
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %70, %34
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sha1_transform(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PREFETCH64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
