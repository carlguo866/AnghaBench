; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_string_substitute.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_string_substitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, %struct.gc_arena*)* @string_substitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @string_substitute(i8* %0, i32 %1, i32 %2, %struct.gc_arena* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_arena*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gc_arena* %3, %struct.gc_arena** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 1
  %15 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %16 = call i64 @gc_malloc(i64 %14, i32 1, %struct.gc_arena* %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %34, %4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %11, align 1
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i8, i8* %11, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  store i8 %31, i8* %32, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %11, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %19, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  ret i8* %38
}

declare dso_local i64 @gc_malloc(i64, i32, %struct.gc_arena*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
