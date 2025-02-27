; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_SetAlpha.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_SetAlpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*)* @parser_SetAlpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parser_SetAlpha(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @VLC_UNUSED(i8* %8)
  %10 = call i32 @skip_space(i8** %5)
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isdigit(i8 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i64 @parse_digit(i8** %5, i32* %17)
  %19 = load i64, i64* @VLC_EGENERIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, i64* @VLC_EGENERIC, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %3
  %26 = call i32 @skip_space(i8** %5)
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isdigit(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i64 @parse_digit(i8** %5, i32* %33)
  %35 = load i64, i64* @VLC_EGENERIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @VLC_EGENERIC, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @parse_digit(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
