; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_sadd_hhmmssff.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_sadd_hhmmssff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, double, i32)* @sadd_hhmmssff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sadd_hhmmssff(i8** %0, double %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load double, double* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i8* @mp_format_time(double %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @talloc_strdup_append(i8* %12, i8* %13)
  %15 = load i8**, i8*** %4, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @talloc_free(i8* %16)
  ret void
}

declare dso_local i8* @mp_format_time(double, i32) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
