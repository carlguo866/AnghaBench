; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_shift_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_shift_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expbuf_t = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.expbuf_t*)* @expbuf_shift_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expbuf_shift_str(%struct.expbuf_t* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.expbuf_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.expbuf_t* %0, %struct.expbuf_t** %3, align 8
  %6 = load %struct.expbuf_t*, %struct.expbuf_t** %3, align 8
  %7 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.expbuf_t*, %struct.expbuf_t** %3, align 8
  %10 = call i32 @expbuf_size(%struct.expbuf_t* %9)
  %11 = call i8* @memchr(i8* %8, i8 signext 0, i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.expbuf_t*, %struct.expbuf_t** %3, align 8
  %17 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load %struct.expbuf_t*, %struct.expbuf_t** %3, align 8
  %22 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @expbuf_size(%struct.expbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
