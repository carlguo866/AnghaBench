; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_dnshostname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_dnshostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @get_dnshostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dnshostname(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load i32, i32* @NI_MAXHOST, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32* %13)
  %25 = load i32, i32* @NI_NAMEREQD, align 4
  %26 = call i64 @GetNameInfoW(i32 %20, i32 %23, i32* %13, i32 %24, i32* null, i32 0, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %31

29:                                               ; preds = %17
  %30 = call i32* @heap_strdupW(i32* %13)
  store i32* %30, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %28, %16
  %32 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetNameInfoW(i32, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32* @heap_strdupW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
