; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_EncodeNamedNumber.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_EncodeNamedNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AMF_EncodeNamedNumber(i8* %0, i8* %1, %struct.TYPE_3__* %2, double %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store double %3, double* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @AMF_EncodeInt16(i8* %21, i8* %22, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load double, double* %9, align 8
  %44 = call i8* @AMF_EncodeNumber(i8* %41, i8* %42, double %43)
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %20, %19
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i8* @AMF_EncodeInt16(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @AMF_EncodeNumber(i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
