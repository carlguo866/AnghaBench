; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_rename_key.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_rename_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @rename_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_key(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @sdb_get(i32* %9, i8* %10, i32 0)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sdb_remove(i32* %16, i8* %17, i32 0)
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sdb_set(i32* %19, i8* %20, i8* %21, i32 0)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @free(i8* %23)
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i8* @sdb_get(i32*, i8*, i32) #1

declare dso_local i32 @sdb_remove(i32*, i8*, i32) #1

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
