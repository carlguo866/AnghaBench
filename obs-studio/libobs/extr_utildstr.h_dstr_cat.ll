; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utildstr.h_dstr_cat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utildstr.h_dstr_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, i8*)* @dstr_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_cat(%struct.dstr* %0, i8* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %20

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.dstr*, %struct.dstr** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @dstr_ncat(%struct.dstr* %16, i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dstr_ncat(%struct.dstr*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
