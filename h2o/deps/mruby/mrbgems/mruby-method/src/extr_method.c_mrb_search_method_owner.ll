; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_search_method_owner.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_search_method_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i64, %struct.RClass* }
%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"respond_to_missing?\00", align 1
@MRB_TT_ICLASS = common dso_local global i64 0, align 8
@E_NAME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"undefined method `%S' for class `%S'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.RClass*, i32, i32, %struct.RClass**, %struct.RProc**, i64)* @mrb_search_method_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrb_search_method_owner(i32* %0, %struct.RClass* %1, i32 %2, i32 %3, %struct.RClass** %4, %struct.RProc** %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.RClass**, align 8
  %13 = alloca %struct.RProc**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.RClass* %1, %struct.RClass** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.RClass** %4, %struct.RClass*** %12, align 8
  store %struct.RProc** %5, %struct.RProc*** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.RClass*, %struct.RClass** %9, align 8
  %18 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %17, %struct.RClass** %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.RProc* @method_search_vm(i32* %19, %struct.RClass** %20, i32 %21)
  %23 = load %struct.RProc**, %struct.RProc*** %13, align 8
  store %struct.RProc* %22, %struct.RProc** %23, align 8
  %24 = load %struct.RProc**, %struct.RProc*** %13, align 8
  %25 = load %struct.RProc*, %struct.RProc** %24, align 8
  %26 = icmp ne %struct.RProc* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %68

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @mrb_intern_lit(i32* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @mrb_respond_to(i32* %32, i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @mrb_symbol_value(i32 %42)
  %44 = call i32 (...) @mrb_true_value()
  %45 = call i32 @mrb_funcall(i32* %40, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 2, i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @mrb_test(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %68

50:                                               ; preds = %39
  %51 = load %struct.RClass*, %struct.RClass** %9, align 8
  %52 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %51, %struct.RClass** %52, align 8
  br label %53

53:                                               ; preds = %50, %7
  br label %54

54:                                               ; preds = %61, %53
  %55 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %56 = load %struct.RClass*, %struct.RClass** %55, align 8
  %57 = getelementptr inbounds %struct.RClass, %struct.RClass* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MRB_TT_ICLASS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.RClass**, %struct.RClass*** %12, align 8
  %63 = load %struct.RClass*, %struct.RClass** %62, align 8
  %64 = getelementptr inbounds %struct.RClass, %struct.RClass* %63, i32 0, i32 1
  %65 = load %struct.RClass*, %struct.RClass** %64, align 8
  %66 = load %struct.RClass**, %struct.RClass*** %12, align 8
  store %struct.RClass* %65, %struct.RClass** %66, align 8
  br label %54

67:                                               ; preds = %54
  br label %83

68:                                               ; preds = %49, %38, %30
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.RClass*, %struct.RClass** %9, align 8
  %71 = call i8* @mrb_class_name(i32* %69, %struct.RClass* %70)
  store i8* %71, i8** %16, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @E_NAME_ERROR, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @mrb_sym2str(i32* %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @mrb_str_new_static(i32* %77, i8* %78, i32 %80)
  %82 = call i32 @mrb_raisef(i32* %72, i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %68, %67
  ret void
}

declare dso_local %struct.RProc* @method_search_vm(i32*, %struct.RClass**, i32) #1

declare dso_local i32 @mrb_respond_to(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_test(i32) #1

declare dso_local i8* @mrb_class_name(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_sym2str(i32*, i32) #1

declare dso_local i32 @mrb_str_new_static(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
