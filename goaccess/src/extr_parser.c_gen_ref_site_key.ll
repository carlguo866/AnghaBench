; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_gen_ref_site_key.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_gen_ref_site_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @gen_ref_site_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_ref_site_key(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @get_kdata(i32* %15, i8* %18, i8* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @get_kdata(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
