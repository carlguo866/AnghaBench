; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Destroy.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@False = common dso_local global i8* null, align 8
@MTDEC__THREADS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XzDecMt_Destroy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i32 @XzDecMt_FreeSt(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = call i32 @MtDec_Destruct(i32* %16)
  %18 = load i8*, i8** @False, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MTDEC__THREADS_MAX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = call i32 @XzUnpacker_Free(i32* %39)
  %41 = load i8*, i8** @False, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %37, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = call i32 @XzDecMt_FreeOutBufs(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @ISzAlloc_Free(i32 %54, i64 %55)
  ret void
}

declare dso_local i32 @XzDecMt_FreeSt(%struct.TYPE_8__*) #1

declare dso_local i32 @MtDec_Destruct(i32*) #1

declare dso_local i32 @XzUnpacker_Free(i32*) #1

declare dso_local i32 @XzDecMt_FreeOutBufs(%struct.TYPE_8__*) #1

declare dso_local i32 @ISzAlloc_Free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
