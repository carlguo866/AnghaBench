; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_get_str_vect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_get_str_vect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*, i32, i32)* @get_str_vect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_str_vect(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @n_sep_els(i8* %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8** null, i8*** %5, align 8
  br label %66

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @obstack_blank(i32* @irp, i32 %29)
  %31 = call i64 @obstack_base(i32* @irp)
  %32 = inttoptr i64 %31 to i8**
  store i8** %32, i8*** %11, align 8
  %33 = call i32 @obstack_finish(i32* @irp)
  store i8** %6, i8*** %12, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %48, %23
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i8**, i8*** %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @next_sep_el(i8** %40, i32 %41, i32 %42)
  %44 = load i8**, i8*** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i8**, i8*** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @next_sep_el(i8** %52, i32 %53, i32 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @gcc_assert(i32 %59)
  %61 = load i8**, i8*** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* null, i8** %64, align 8
  %65 = load i8**, i8*** %11, align 8
  store i8** %65, i8*** %5, align 8
  br label %66

66:                                               ; preds = %51, %22
  %67 = load i8**, i8*** %5, align 8
  ret i8** %67
}

declare dso_local i32 @n_sep_els(i8*, i32, i32) #1

declare dso_local i32 @obstack_blank(i32*, i32) #1

declare dso_local i64 @obstack_base(i32*) #1

declare dso_local i32 @obstack_finish(i32*) #1

declare dso_local i8* @next_sep_el(i8**, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
