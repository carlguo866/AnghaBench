; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_watch_message_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_watch_message_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8**)* @xs_dev_watch_message_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_dev_watch_message_parse_string(i8** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %11 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @memchr(i8* %10, i32 0, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i8* @memchr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
