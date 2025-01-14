; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_aout.c_gettextspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_aout.c_gettextspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@xbuf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@textspace = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"no room for %u bytes of text space: can't do -c\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't read text space: can't do -c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gettextspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gettextspace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xbuf, i32 0, i32 0), align 8
  %4 = call i64 @malloc(i64 %3)
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** @textspace, align 8
  %6 = load i32*, i32** @textspace, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xbuf, i32 0, i32 0), align 8
  %10 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %26

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xbuf, i32 0, i32 0), align 8
  %14 = call i32 @N_TXTOFF(i64 %13)
  %15 = call i32 @fseek(i32* %12, i32 %14, i32 0)
  %16 = load i32*, i32** @textspace, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xbuf, i32 0, i32 0), align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @fread(i32* %16, i32 1, i64 %17, i32* %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xbuf, i32 0, i32 0), align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** @textspace, align 8
  %25 = call i32 @free(i32* %24)
  store i32* null, i32** @textspace, align 8
  br label %26

26:                                               ; preds = %8, %22, %11
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @N_TXTOFF(i64) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
