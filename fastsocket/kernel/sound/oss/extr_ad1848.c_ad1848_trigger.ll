; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@audio_devs = common dso_local global %struct.TYPE_9__** null, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@OPEN_WRITE = common dso_local global i32 0, align 4
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ad1848_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1848_trigger(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @audio_devs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %10, i64 %12
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @audio_devs, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = call zeroext i8 @ad_read(%struct.TYPE_8__* %35, i32 9)
  store i8 %36, i8* %9, align 1
  store i8 %36, i8* %8, align 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OPEN_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 2
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  br label %58

53:                                               ; preds = %43
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, -3
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OPEN_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, 1
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %8, align 1
  br label %81

76:                                               ; preds = %66
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, -2
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %8, align 1
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = load i8, i8* %8, align 1
  %91 = call i32 @ad_write(%struct.TYPE_8__* %89, i32 9, i8 zeroext %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = call i32 @ad_unmute(%struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @ad_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ad_write(%struct.TYPE_8__*, i32, i8 zeroext) #1

declare dso_local i32 @ad_unmute(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
