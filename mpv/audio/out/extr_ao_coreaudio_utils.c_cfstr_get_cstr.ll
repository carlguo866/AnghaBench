; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_cfstr_get_cstr.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_cfstr_get_cstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CA_CFSTR_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cfstr_get_cstr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @CFStringGetLength(i32 %5)
  %7 = load i32, i32* @CA_CFSTR_ENCODING, align 4
  %8 = call i64 @CFStringGetMaximumSizeForEncoding(i32 %6, i32 %7)
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i8* @talloc_zero_size(i32* null, i64 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @CA_CFSTR_ENCODING, align 4
  %16 = call i32 @CFStringGetCString(i32 %12, i8* %13, i64 %14, i32 %15)
  %17 = load i8*, i8** %4, align 8
  ret i8* %17
}

declare dso_local i64 @CFStringGetMaximumSizeForEncoding(i32, i32) #1

declare dso_local i32 @CFStringGetLength(i32) #1

declare dso_local i8* @talloc_zero_size(i32*, i64) #1

declare dso_local i32 @CFStringGetCString(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
