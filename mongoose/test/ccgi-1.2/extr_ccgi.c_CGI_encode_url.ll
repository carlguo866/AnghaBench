; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_encode_url.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_encode_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CGI_encode_url(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %21

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @urlcount(i8* %11, i8* %12)
  %14 = add nsw i64 %13, 1
  %15 = call i8* @mymalloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @urlencode(i8* %16, i8* %17, i8* %18)
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i8* @mymalloc(i64) #1

declare dso_local i64 @urlcount(i8*, i8*) #1

declare dso_local i32 @urlencode(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
