; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_mp3test.c_local_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_mp3test.c_local_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@shared_ctl = common dso_local global %struct.TYPE_4__* null, align 8
@mp3_data = common dso_local global i8* null, align 8
@shared_data = common dso_local global %struct.TYPE_3__* null, align 8
@ERR_MP3_INDATA_UNDERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_decode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %1, align 4
  %9 = load i8*, i8** @mp3_data, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %1, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %92

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @MP3FindSyncWord(i8* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %92

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shared_data, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shared_data, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MP3Decode(i32 %43, i8** %2, i32* %3, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ERR_MP3_INDATA_UNDERFLOW, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %92

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = icmp sle i32 %66, -6
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, -12
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %2, align 8
  br label %74

74:                                               ; preds = %71, %68, %65
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %33
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** @mp3_data, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %59, %27, %20
  ret void
}

declare dso_local i32 @MP3FindSyncWord(i8*, i32) #1

declare dso_local i32 @MP3Decode(i32, i8**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
