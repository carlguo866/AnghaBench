; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localectl.c_localectl_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localectl.c_localectl_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@localectl_main.verbs = internal constant [12 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 137, i32 1, i32 136, i32 129 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 2, i32 137, i32 0, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 137, i32 1, i32 0, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 3, i32 0, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 137, i32 1, i32 0, i32 134 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 5, i32 0, i32 130 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 137, i32 1, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 137, i32 1, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 137, i32 2, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 137, i32 1, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 137, i32 137, i32 0, i32 128 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"set-locale\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"list-locales\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"set-keymap\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"list-keymaps\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"set-x11-keymap\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"list-x11-keymap-models\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"list-x11-keymap-layouts\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"list-x11-keymap-variants\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"list-x11-keymap-options\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @localectl_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @localectl_main(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i8**, i8*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @dispatch_verb(i32 %7, i8** %8, %struct.TYPE_3__* getelementptr inbounds ([12 x %struct.TYPE_3__], [12 x %struct.TYPE_3__]* @localectl_main.verbs, i64 0, i64 0), i32* %9)
  ret i32 %10
}

declare dso_local i32 @dispatch_verb(i32, i8**, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
