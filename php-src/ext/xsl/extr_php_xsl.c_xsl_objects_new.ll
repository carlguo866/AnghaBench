; ModuleID = '/home/carl/AnghaBench/php-src/ext/xsl/extr_php_xsl.c_xsl_objects_new.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xsl/extr_php_xsl.c_xsl_objects_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i8*, i32 }

@XSL_SECPREF_DEFAULT = common dso_local global i32 0, align 4
@xsl_object_handlers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xsl_objects_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_8__* @zend_object_alloc(i32 32, i32* %4)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load i32, i32* @XSL_SECPREF_DEFAULT, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @zend_object_std_init(%struct.TYPE_7__* %10, i32* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @object_properties_init(%struct.TYPE_7__* %14, i32* %15)
  %17 = call i8* @zend_new_array(i32 0)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = call i8* @zend_new_array(i32 0)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32* @xsl_object_handlers, i32** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  ret %struct.TYPE_7__* %27
}

declare dso_local %struct.TYPE_8__* @zend_object_alloc(i32, i32*) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i8* @zend_new_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
