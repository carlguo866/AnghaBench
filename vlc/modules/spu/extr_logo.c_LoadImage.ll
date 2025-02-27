; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_LoadImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @LoadImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LoadImage(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @image_HandlerCreate(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32* null, i32** %3, align 8
  br label %33

19:                                               ; preds = %13
  %20 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %21 = call i32 @video_format_Init(i32* %7, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @vlc_path2uri(i8* %22, i32* null)
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32* @image_ReadUrl(i32* %24, i8* %25, i32* %7)
  store i32* %26, i32** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @image_HandlerDelete(i32* %29)
  %31 = call i32 @video_format_Clean(i32* %7)
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %19, %18, %12
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32* @image_HandlerCreate(i32*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32* @image_ReadUrl(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
