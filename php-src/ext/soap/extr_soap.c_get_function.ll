; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_get_function.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_get_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*)* @get_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_function(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @estrndup(i8* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @php_strtolower(i8* %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @zend_hash_str_find_ptr(i32* %21, i8* %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @efree(i8* %27)
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %52

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @zend_hash_str_find_ptr(i32* %38, i8* %39, i32 %40)
  store i32* %41, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @efree(i8* %44)
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %3, align 8
  br label %52

47:                                               ; preds = %35, %30
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @efree(i8* %50)
  store i32* null, i32** %3, align 8
  br label %52

52:                                               ; preds = %49, %43, %26
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @php_strtolower(i8*, i32) #1

declare dso_local i32* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
